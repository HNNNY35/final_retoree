<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS v5.2.1 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/price_check_header.css" />
  </head>

  <body>
     <%@ include file="../header.jsp" %>
    <main>
      <div class="container mt-5 pt-5 mb-5">
        <div class="row justify-content-center">
          <div class="col-md-6 col-lg-4 col-xl-4">
            <div class="card">
              <div class="card-body">
                <div class="text-center m-auto">
                  <h4 class="text-uppercase text-center">Login</h4>
                </div>
                <form action="#" method="post">
                  <input
                    type="hidden"
                    name="csrftoken"
                    value="ea49375f43c7e6a59c77df1e4de562b3f1350124eeb70e5d5124e4ce3b5251c2b4d12e9aaf2a3ddc618c178c8dc4620b"
                  />
                  <div class="form-group mb-3">
                    <label for="login">Login</label>
                    <input
                      type="text"
                      name="login"
                      placeholder="login"
                      class="form-control"
                      required=""
                    />
                  </div>
                  <div class="form-group mb-3">
                    <label for="password">Password</label>
                    <div class="input-group bg-light" id="show_hide_password">
                      <input
                        type="password"
                        class="form-control"
                        id="password"
                        value="Passwords"
                        name="password"
                        placeholder="Enter Password"
                        required=""
                      />
                      <div class="input-group-addon">
                        <a href=""
                          ><i
                            class="fa fa-lg fa-eye"
                            style="
                              padding-top: 10px;
                              padding-left: 10px;
                              padding-right: 10px;
                            "
                            aria-hidden="true"
                          ></i
                        ></a>
                      </div>
                    </div>
                  </div>
                  <div class="form-group mb-3">
                    <div
                      class="custom-control custom-checkbox checkbox-success"
                    >
                      <input
                        type="checkbox"
                        class="custom-control-input"
                        id="checkbox-signin"
                        checked
                      />
                      <label class="custom-control-label" for="checkbox-signin"
                        >Remember me</label
                      >
                    </div>
                  </div>
                  <div class="form-group mb-0 text-center">
                    <button
                      class="btn btn-primary btn-sm"
                      type="submit"
                      name="submit"
                    >
                      Log In
                    </button>
                  </div>
                  <script>
                    $(document).ready(function () {
                      $("#show_hide_password a").on("click", function (event) {
                        event.preventDefault();
                        if (
                          $("#show_hide_password input").attr("type") == "text"
                        ) {
                          $("#show_hide_password input").attr(
                            "type",
                            "password"
                          );
                          $("#show_hide_password i").addClass("fa-eye-slash");
                          $("#show_hide_password i").removeClass("fa-eye");
                        } else if (
                          $("#show_hide_password input").attr("type") ==
                          "password"
                        ) {
                          $("#show_hide_password input").attr("type", "text");
                          $("#show_hide_password i").removeClass(
                            "fa-eye-slash"
                          );
                          $("#show_hide_password i").addClass("fa-eye");
                        }
                      });
                    });
                  </script>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
     <%@ include file="../footer.jsp" %>
    <!-- Bootstrap JavaScript Libraries -->
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
      integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
      crossorigin="anonymous"
    ></script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
      integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
