require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300318Trigger = class("Q300318Trigger", GadgetActorProxy)
Q300318Trigger.defaultAlias = "Q300318Trigger"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300318Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300318Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(3, 15, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300318Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):LoadSceneTagCoverEffect("ART/Stages/Eff_Stream/POI/Eff_Stages_POI_Level_Xm_BigTreeScreenDissolve_01_Vo", 3, 3, 3, function(arg1)
        actorUtils.FinishQuestID(false, 300318)
    end, function(arg1)
        actorMgr:GetActor("3003"):DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
        actorMgr:GetActor("Q300318Trigger"):DestroySelf()
    end)

    globalActor:StopLocalAvatar()
    actorMgr:GetActor("3003"):DisableMainPageWithConfig(true, "DisableTestSumeruMainQuestNoMoveEvent")
end

function Q300318Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300318Trigger
