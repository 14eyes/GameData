require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger15_7303638narrtor = class("Q73036Trigger15_7303638narrtor", GadgetActorProxy)
Q73036Trigger15_7303638narrtor.defaultAlias = "Q73036Trigger15_7303638narrtor"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger15_7303638narrtor:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger15_7303638narrtor:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10.01, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger15_7303638narrtor:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama21, nil, "")
    this:DestroySelf()
end

function Q73036Trigger15_7303638narrtor:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger15_7303638narrtor
