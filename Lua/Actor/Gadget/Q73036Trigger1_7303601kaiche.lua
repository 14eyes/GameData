require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger1_7303601kaiche = class("Q73036Trigger1_7303601kaiche", GadgetActorProxy)
Q73036Trigger1_7303601kaiche.defaultAlias = "Q73036Trigger1_7303601kaiche"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger1_7303601kaiche:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger1_7303601kaiche:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger1_7303601kaiche:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73036"):NarratorOnlyTaskByData(datas.NarratorWithId7303601)
    this:DestroySelf()
end

function Q73036Trigger1_7303601kaiche:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger1_7303601kaiche
