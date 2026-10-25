require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302219Finish = class("Q1302219Finish", GadgetActorProxy)
Q1302219Finish.defaultAlias = "Q1302219Finish"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302219Finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302219Finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302219Finish:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc13003Data.alias)
    this:DestroySelf()
end

function Q1302219Finish:TriggerOut()
    print("TriggerOut")
end

return Q1302219Finish
