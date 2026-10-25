require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12033Trigger9 = class("Q12033Trigger9", GadgetActorProxy)
Q12033Trigger9.defaultAlias = "Q12033Trigger9"
local Q12033ClientConfig = require("Quest/Client/Q12033ClientConfig")

local subIDs = Q12033ClientConfig.SubIDs
local npcs = Q12033ClientConfig.Npcs
local datas = Q12033ClientConfig.Datas

function Q12033Trigger9:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12033Trigger9:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12033Trigger9:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12033"):RequestInteraction(npcs.Npc12077Data.alias)
    self:DestroySelf()
end

function Q12033Trigger9:TriggerOut()
    print("TriggerOut")
end

return Q12033Trigger9
