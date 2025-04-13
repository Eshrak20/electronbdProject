import React from "react";
import Visit from "./Visit";
import MainLayout from "@/Layouts/MainLayout";
import DynamicBanner from "@/Components/MyComponents/DynamicBanner";
import aboutImage from "../../../../../public/reactAssets/Images/AboutBanner/about.jpg";
import Form from "./Form";
import HeadLine2 from "@/Components/MyComponents/HeadLine2";

const Contact = () => {
    return (
        <>
            <MainLayout>
                <>
                    <DynamicBanner
                        image={aboutImage}
                        title="Contact Us"
                        breadcrumb="Home / Contact Us"
                    />
                    <Visit />
                    <div className="max-w-full lg:max-w-screen-xl 2xl:max-w-screen-2xl mx-auto  md:py-10 2xl:py-20 lg:px-24 xl:px-28 2xl:px-20 gap-10 lg:gap-16 xl:gap-20 2xl:gap-32">
                        <HeadLine2 title="Message US" text="text-gray-900" />
                        <Form />
                    </div>
                </>
            </MainLayout>
        </>
    );
};

export default Contact;
