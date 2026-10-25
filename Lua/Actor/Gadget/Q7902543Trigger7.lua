require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902543Trigger7 = class("Q7902543Trigger7", GadgetActorProxy)
Q7902543Trigger7.defaultAlias = "Q7902543Trigger7"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902543Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902543Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902543Trigger7:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902543)
    self:DestroySelf()
end

function Q7902543Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q7902543Trigger7
