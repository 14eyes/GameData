require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7273005Talk = class("Q7273005Talk", GadgetActorProxy)
Q7273005Talk.defaultAlias = "Q7273005Talk"
local Q72730ClientConfig = require("Quest/Client/Q72730ClientConfig")

local this
local subIDs = Q72730ClientConfig.SubIDs
local npcs = Q72730ClientConfig.Npcs
local datas = Q72730ClientConfig.Datas

function Q7273005Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7273005Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7273005Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72730"):RequestInteraction(npcs.Npc13069Data.alias)
    this:DestroySelf()
end

function Q7273005Talk:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7273005Talk:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7273005Talk:TriggerOut()
    print("TriggerOut")
end

return Q7273005Talk
