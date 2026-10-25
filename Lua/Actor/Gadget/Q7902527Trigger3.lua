require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902527Trigger3 = class("Q7902527Trigger3", GadgetActorProxy)
Q7902527Trigger3.defaultAlias = "Q7902527Trigger3"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902527Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902527Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902527Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902527)
    self:DestroySelf()
end

function Q7902527Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q7902527Trigger3
