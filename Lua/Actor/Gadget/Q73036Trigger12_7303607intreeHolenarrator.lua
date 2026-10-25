require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger12_7303607intreeHolenarrator = class("Q73036Trigger12_7303607intreeHolenarrator", GadgetActorProxy)
Q73036Trigger12_7303607intreeHolenarrator.defaultAlias = "Q73036Trigger12_7303607intreeHolenarrator"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger12_7303607intreeHolenarrator:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger12_7303607intreeHolenarrator:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger12_7303607intreeHolenarrator:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama11, nil, "")
    this:DestroySelf()
end

function Q73036Trigger12_7303607intreeHolenarrator:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger12_7303607intreeHolenarrator
