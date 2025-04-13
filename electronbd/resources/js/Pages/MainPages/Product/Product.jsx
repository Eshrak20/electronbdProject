import DynamicBanner from "@/Components/MyComponents/DynamicBanner";
import MainLayout from "@/Layouts/MainLayout";
import aboutImage from "../../../../../public/reactAssets/Images/AboutBanner/about.jpg"; // Adjust the path to your image
import HomeProducts from "../Home/HomeProducts/HomeProducts";

const Project = ({ ourProduct }) => {
    return (
        <>
            <MainLayout>
                <>
                    <DynamicBanner
                        image={aboutImage}
                        title="Product"
                        breadcrumb="Home / Product"
                    />

                    <div className="">
                        <HomeProducts
                            ourProduct={ourProduct}
                            isProjectPage={true}
                        />
                    </div>
                </>
            </MainLayout>
        </>
    );
};

export default Project;
