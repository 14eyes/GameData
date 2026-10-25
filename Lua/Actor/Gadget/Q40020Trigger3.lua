require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40020Trigger3 = class("Q40020Trigger3", GadgetActorProxy)
Q40020Trigger3.defaultAlias = "Q40020Trigger3"
local Q40020ClientConfig = require("Quest/Client/Q40020ClientConfig")

local mainID = Q40020ClientConfig.MainID
local actorAlias = Q40020ClientConfig.ActorAlias
local subIDs = Q40020ClientConfig.SubIDs
local npcs = Q40020ClientConfig.Npcs
local gadgets = Q40020ClientConfig.Gadgets
local datas = Q40020ClientConfig.Datas

function Q40020Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40020Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40020Trigger3:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4002006)
    self:DestroySelf()
end

function Q40020Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40020Trigger3
