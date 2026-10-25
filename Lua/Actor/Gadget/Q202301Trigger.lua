require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q202301Trigger = class("Q202301Trigger", GadgetActorProxy)
Q202301Trigger.defaultAlias = "Q202301Trigger"
local Q2023ClientConfig = require("Quest/Client/Q2023ClientConfig")

local mainID = Q2023ClientConfig.MainID
local actorAlias = Q2023ClientConfig.ActorAlias
local subIDs = Q2023ClientConfig.SubIDs
local npcs = Q2023ClientConfig.Npcs
local datas = Q2023ClientConfig.Datas

function Q202301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q202301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNormalPolygonTrigger(1, "Inazuma_IslandLockArea_001", self.TriggerIn)
end

function Q202301Trigger:TriggerIn()
    print("202301 TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 202301)
    self:DestroySelf()
end

function Q202301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q202301Trigger
