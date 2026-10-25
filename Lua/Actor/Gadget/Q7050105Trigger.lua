require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7050105Trigger = class("Q7050105Trigger", GadgetActorProxy)
Q7050105Trigger.defaultAlias = "Q7050105Trigger"
local Q70501ClientConfig = require("Quest/Client/Q70501ClientConfig")

local mainID = Q70501ClientConfig.MainID
local actorAlias = Q70501ClientConfig.ActorAlias
local subIDs = Q70501ClientConfig.SubIDs
local npcs = Q70501ClientConfig.Npcs
local datas = Q70501ClientConfig.Datas

function Q7050105Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7050105Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNormalPolygonTrigger(1, "BigWorld_2_1WQMengDe", self.TriggerIn)
end

function Q7050105Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 7050105)
    self:DestroySelf()
end

function Q7050105Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7050105Trigger
