# Django Debug Toolbar

The Django Debug Toolbar is a configurable set of panels that display various debug information about the current request/response and when clicked, display more details about the specific information. It is a helpful tool for debugging Django applications during development.

## Prerequisites

Before getting started, ensure you have the following prerequisites installed:

- Python (3.10 or higher)
- PostgreSQL

If you haven't installed PostgreSQL yet, you can download it from [PostgreSQL Downloads](https://www.postgresql.org/download/) and follow the installation instructions for your operating system.

## Installation

1. Install Django Debug Toolbar using Poetry:
    ```
    poetry add django-debug-toolbar
    ```

2. Ensure that Poetry is activated:
    ```bash
    poetry shell
    ```

3. Install or update dependencies:
    ```bash
    poetry install --no-root
    # or
    poetry update
    ```

4. Add `'debug_toolbar'` to the `INSTALLED_APPS` setting in your Django project's settings file (`settings.py`).

5. Include the Debug Toolbar middleware to your `MIDDLEWARE` setting, preferably at the top of the list:
    ```python
    MIDDLEWARE = [
        'debug_toolbar.middleware.DebugToolbarMiddleware',
        # other middleware classes...
    ]
    ```

6. Configure the `INTERNAL_IPS` setting in your Django project's settings file (`settings.py`) to allow access to the debug toolbar. This setting specifies which IP addresses are considered internal (i.e., your development machine). For example:
    ```python
    INTERNAL_IPS = ['127.0.0.1']
    ```

7. If your project uses a custom user model, add `'debug_toolbar.panels.profiling.ProfilingPanel'` to your `DEBUG_TOOLBAR_PANELS` setting in `settings.py` to enable the profiling panel.

8. Set up your PostgreSQL database in your Django project's settings file (`settings.py`). Update the `DATABASES` setting with your PostgreSQL configuration.

9. Run your Django development server:
    ```
    make run-server
    ```

10. Open your browser and navigate to your Django application. You should see the debug toolbar displayed on the side or at the bottom of the page.

## Usage

Once installed and configured, the Django Debug Toolbar will automatically appear on your web pages when you access them during development. Clicking on the toolbar icons will expand panels with detailed debug information, including SQL queries, HTTP headers, request/response data, and more.

### Key Features

- **SQL Queries**: Shows the SQL queries executed for each request.
- **Request/Response**: Displays information about the request and response objects.
- **Templates**: Provides details about the templates rendered during the request.
- **Cache**: Shows cache usage information.
- **Profiling**: Profiles code execution and displays performance statistics.

For more detailed information about the available panels and customization options, refer to the [official documentation](https://django-debug-toolbar.readthedocs.io/en/latest/).

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please [open an issue](https://github.com/jazzband/django-debug-toolbar/issues) on GitHub.

## License

Django Debug Toolbar is licensed under the BSD-3-Clause License. See the [LICENSE](LICENSE) file for more details.
