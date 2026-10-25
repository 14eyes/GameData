require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226305LidaoTalkTrigger = class("Q7226305LidaoTalkTrigger", GadgetActorProxy)
Q7226305LidaoTalkTrigger.defaultAlias = "Q7226305LidaoTalkTrigger"
local Q72263ClientConfig = require("Quest/Client/Q72263ClientConfig")

local subIDs = Q72263ClientConfig.SubIDs
local npcs = Q72263ClientConfig.Npcs
local datas = Q72263ClientConfig.Datas

function Q7226305LidaoTalkTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226305LidaoTalkTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226305LidaoTalkTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72263"):RequestInteraction(npcs.NPC20520Data.alias)
    self:DestroySelf()
end

function Q7226305LidaoTalkTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7226305LidaoTalkTrigger
