using Microsoft.AspNetCore.Mvc;
using Moq;
using Shopping_Library.Entity;
using Shopping_MAll_TestProject.testdata;
using Shopping_Mall_WebApi.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shopping_MAll_TestProject
{
    
    public class Shopping_MallController_testdata
    {
        [Fact]
        public void Index_ReturnsAViewResult_WithAListOfEmployees()
        {
            // Arrange
            var mockRepo = new Mock<IDataRepository<Malls>>();

            mockRepo.Setup(repo => repo.List()).Returns(ShoppingTestdata.GetTestShops());

            var controller = new MallController(mockRepo.Object);

            // Act
            var result = controller.List();

            // Assert

            var viewResult = Assert.IsType<ViewResult>(result);

            var model = Assert.IsAssignableFrom<List<Malls>>(viewResult.ViewData.Model);

            Assert.Equal(2, model.Count());

        }

    }
}
