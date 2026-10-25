require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger11_7303606treeHolenarrator = class("Q73036Trigger11_7303606treeHolenarrator", GadgetActorProxy)
Q73036Trigger11_7303606treeHolenarrator.defaultAlias = "Q73036Trigger11_7303606treeHolenarrator"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger11_7303606treeHolenarrator:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger11_7303606treeHolenarrator:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 2, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger11_7303606treeHolenarrator:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama9, nil, "")
    this:DestroySelf()
end

function Q73036Trigger11_7303606treeHolenarrator:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger11_7303606treeHolenarrator
