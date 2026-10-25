require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302113Talk = class("Q1302113Talk", GadgetActorProxy)
Q1302113Talk.defaultAlias = "Q1302113Talk"
local Q13021ClientConfig = require("Quest/Client/Q13021ClientConfig")

local this
local subIDs = Q13021ClientConfig.SubIDs
local npcs = Q13021ClientConfig.Npcs
local datas = Q13021ClientConfig.Datas

function Q1302113Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302113Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302113Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13021"):RequestInteraction(npcs.Npc13003Data.alias)
    this:DestroySelf()
end

function Q1302113Talk:TriggerOut()
    print("TriggerOut")
end

return Q1302113Talk
