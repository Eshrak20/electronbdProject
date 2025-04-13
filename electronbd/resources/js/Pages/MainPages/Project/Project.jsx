import DynamicBanner from "@/Components/MyComponents/DynamicBanner";
import MainLayout from "@/Layouts/MainLayout";
import aboutImage from "../../../../../public/reactAssets/Images/AboutBanner/about.jpg"; // Adjust the path to your image
import HomeProjects from "../Home/HomeProjects/HomeProjects";

const Project = ({ ourProject }) => {
    return (
        <>
            <MainLayout>
                <>
                    <DynamicBanner
                        image={aboutImage}
                        title="Project"
                        breadcrumb="Home / Project"
                    />

                    <div className="">
                        <HomeProjects
                            ourProject={ourProject}
                            isProjectPage={true}
                        />
                    </div>
                </>
            </MainLayout>
        </>
    );
};

export default Project;
