require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302222Talk = class("Q1302222Talk", GadgetActorProxy)
Q1302222Talk.defaultAlias = "Q1302222Talk"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302222Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302222Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302222Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc1053Data.alias)
    this:DestroySelf()
end

function Q1302222Talk:TriggerOut()
    print("TriggerOut")
end

return Q1302222Talk
