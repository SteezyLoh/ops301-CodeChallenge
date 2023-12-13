import requests


def main():
    # Step 1: Prompt the user for the destination URL
    destination_url = input("Enter the destination URL: ")

    # Step 2: Prompt the user to select an HTTP Method
    http_method = input("Select an HTTP Method (GET, POST, PUT, DELETE, HEAD, PATCH, OPTIONS): ").upper()

    # Step 3: Print the entire request and ask for confirmation
    print("\nRequest to be sent:")
    print(f"URL: {destination_url}")
    print(f"HTTP Method: {http_method}")
    confirmation = input("Do you want to proceed? (yes/no): ").lower()

    if confirmation != 'yes':
        print("Operation aborted.")
        return

    # Step 4: Perform the request using the requests library
    response = perform_request(destination_url, http_method)

    # Step 5: Print response header information
    print("\nResponse Header Information:")
    for key, value in response.headers.items():
        print(f"{key}: {value}")

    # Step 6: Translate status code to plain terms
    print("\nTranslated Status Code:")
    translate_status_code(response.status_code)

def perform_request(url, method):
    try:
        if method == 'GET':
            response = requests.get(url)
        elif method == 'POST':
            response = requests.post(url)
        elif method == 'PUT':
            response = requests.put(url)
        elif method == 'DELETE':
            response = requests.delete(url)
        elif method == 'HEAD':
            response = requests.head(url)
        elif method == 'PATCH':
            response = requests.patch(url)
        elif method == 'OPTIONS':
            response = requests.options(url)
        else:
            raise ValueError("Invalid HTTP Method")
        
        return response
    except requests.RequestException as e:
        print(f"Error: {e}")
        return None

def translate_status_code(status_code):
    translations = {
        200: "OK",
        201: "Created",
        204: "No Content",
        400: "Bad Request",
        401: "Unauthorized",
        403: "Forbidden",
        404: "Not Found",
        500: "Internal Server Error",
    }
    
    translation = translations.get(status_code, "Unknown Status Code")
    print(f"{status_code}: {translation}")

if __name__ == "__main__":
    main()