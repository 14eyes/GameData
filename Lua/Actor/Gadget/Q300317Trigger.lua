require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300317Trigger = class("Q300317Trigger", GadgetActorProxy)
Q300317Trigger.defaultAlias = "Q300317Trigger"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300317Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300317Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(4, 8, 11, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300317Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):LoadSceneTagCoverEffect("ART/Stages/Eff_Stream/POI/Eff_Stages_POI_Level_Xm_BigTreeScreenDissolve_01_Vo", 3, 3, 3, function(arg1)
        actorUtils.FinishQuestID(false, 300317)
    end, function(arg1)
        actorMgr:GetActor("3003"):DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
        actorMgr:GetActor("Q300317Trigger"):DestroySelf()
    end)

    globalActor:StopLocalAvatar()
    actorMgr:GetActor("3003"):DisableMainPageWithConfig(true, "DisableTestSumeruMainQuestNoMoveEvent")
end

function Q300317Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300317Trigger
