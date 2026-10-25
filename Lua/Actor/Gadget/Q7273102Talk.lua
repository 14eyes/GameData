require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7273102Talk = class("Q7273102Talk", GadgetActorProxy)
Q7273102Talk.defaultAlias = "Q7273102Talk"
local Q72731ClientConfig = require("Quest/Client/Q72731ClientConfig")

local this
local subIDs = Q72731ClientConfig.SubIDs
local npcs = Q72731ClientConfig.Npcs
local datas = Q72731ClientConfig.Datas

function Q7273102Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7273102Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7273102Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72731"):RequestInteraction(npcs.Npc1044Data.alias)
    this:DestroySelf()
end

function Q7273102Talk:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7273102Talk:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7273102Talk:TriggerOut()
    print("TriggerOut")
end

return Q7273102Talk
