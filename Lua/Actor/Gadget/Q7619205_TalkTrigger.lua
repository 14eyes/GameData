require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619205_TalkTrigger = class("Q7619205_TalkTrigger", GadgetActorProxy)
Q7619205_TalkTrigger.defaultAlias = "Q7619205_TalkTrigger"
local Q76192ClientConfig = require("Quest/Client/Q76192ClientConfig")

local this
local subIDs = Q76192ClientConfig.SubIDs
local npcs = Q76192ClientConfig.Npcs
local points = Q76192ClientConfig.Points

function Q7619205_TalkTrigger:OnPostDataPrepare()
    print("Q7619205_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7619205_TalkTrigger:OnPostComponentPrepare()
    print("Q7619205_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76192)
end

function Q7619205_TalkTrigger:TriggerIn()
    print("Q7619205_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76192"):RequestInteraction(npcs.Npc7088.alias, "", true)
    this:DestroySelf()
end

function Q7619205_TalkTrigger:PreTriggerIn()
    print("Q7619205_TalkTrigger - PreTriggerIn")
end

function Q7619205_TalkTrigger:LightUpTriggerIn()
    print("Q7619205_TalkTrigger - LightUpTriggerIn")
end

function Q7619205_TalkTrigger:TriggerOut()
    print("Q7619205_TalkTrigger - TriggerOut")
end

return Q7619205_TalkTrigger
