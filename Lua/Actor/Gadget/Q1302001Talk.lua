require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302001Talk = class("Q1302001Talk", GadgetActorProxy)
Q1302001Talk.defaultAlias = "Q1302001Talk"
local Q13020ClientConfig = require("Quest/Client/Q13020ClientConfig")

local this
local subIDs = Q13020ClientConfig.SubIDs
local npcs = Q13020ClientConfig.Npcs
local datas = Q13020ClientConfig.Datas

function Q1302001Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302001Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302001Talk:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("13020")
    actor:RequestInteraction(npcs.Npc13030Data.alias)
    actor:TryPauseCurAutoNarrator()
    actor:ClearNarratorTask()
    this:DestroySelf()
end

function Q1302001Talk:TriggerOut()
    print("TriggerOut")
end

return Q1302001Talk
