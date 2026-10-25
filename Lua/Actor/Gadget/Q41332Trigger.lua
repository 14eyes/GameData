require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41332Trigger = class("Q41332Trigger", GadgetActorProxy)
Q41332Trigger.defaultAlias = "Q41332Trigger"
local Q41332ClientConfig = require("Quest/Client/Q41332ClientConfig")

local mainID = Q41332ClientConfig.MainID
local actorAlias = Q41332ClientConfig.ActorAlias
local subIDs = Q41332ClientConfig.SubIDs
local npcs = Q41332ClientConfig.Npcs
local datas = Q41332ClientConfig.Datas

function Q41332Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41332Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41332Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4133201)
end

function Q41332Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41332Trigger
