require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902531Trigger4 = class("Q7902531Trigger4", GadgetActorProxy)
Q7902531Trigger4.defaultAlias = "Q7902531Trigger4"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902531Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902531Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902531Trigger4:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902531)
    self:DestroySelf()
end

function Q7902531Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q7902531Trigger4
