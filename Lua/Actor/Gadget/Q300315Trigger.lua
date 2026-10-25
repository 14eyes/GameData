require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300315Trigger = class("Q300315Trigger", GadgetActorProxy)
Q300315Trigger.defaultAlias = "Q300315Trigger"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300315Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300315Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(5, 6, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300315Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):LoadSceneTagCoverEffect("ART/Stages/Eff_Stream/POI/Eff_Stages_POI_Level_Xm_BigTreeScreenDissolve_01_Vo", 3, 3, 3, function(arg1)
        actorUtils.FinishQuestID(false, 300315)
    end, function(arg1)
        actorMgr:GetActor("3003"):DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
        actorMgr:GetActor("Q300315Trigger"):DestroySelf()
    end)

    globalActor:StopLocalAvatar()
    actorMgr:GetActor("3003"):DisableMainPageWithConfig(true, "DisableTestSumeruMainQuestNoMoveEvent")
end

function Q300315Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300315Trigger
