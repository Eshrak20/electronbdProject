import DynamicBanner from "@/Components/MyComponents/DynamicBanner";
import MainLayout from "@/Layouts/MainLayout";
import aboutImage from "../../../../../public/reactAssets/Images/AboutBanner/about.jpg";
import HomePress from "../Home/HomePress/HomePress";

const Press = ({press}) => {
    return (
        <>
            <MainLayout>
                <>
                    <DynamicBanner
                        image={aboutImage}
                        title="Press and Media"
                        breadcrumb="Home / Press"
                    />
                    <div className="max-w-full lg:max-w-screen-xl 2xl:max-w-screen-2xl mx-auto  md:py-10 2xl:py-20 lg:px-24 xl:px-28 2xl:px-20 gap-10 lg:gap-16 xl:gap-20 2xl:gap-32"></div>
                    <div className="md:-mt-14 2xl:-mt-60 mt-5 md:-mb-10 2xl:-mb-44">
                        <HomePress isPressPage={true} pressData={press} />
                    </div>
                </>
            </MainLayout>
        </>
    );
};

export default Press;
