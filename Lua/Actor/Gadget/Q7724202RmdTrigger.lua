require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7724202RmdTrigger = class("Q7724202RmdTrigger", GadgetActorProxy)
Q7724202RmdTrigger.defaultAlias = "Q7724202RmdTrigger"
local Q77242ClientConfig = require("Quest/Client/Q77242ClientConfig")

local this
local subIDs = Q77242ClientConfig.SubIDs
local datas = Q77242ClientConfig.Datas
local npcs = Q77242ClientConfig.Npcs
local points = Q77242ClientConfig.Points

function Q7724202RmdTrigger:OnPostDataPrepare()
    print("Q7724202RmdTrigger - OnPostDataPrepare")
    this = self
end

function Q7724202RmdTrigger:OnPostComponentPrepare()
    print("Q7724202RmdTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13.142661, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77242)
end

function Q7724202RmdTrigger:TriggerIn()
    print("Q7724202RmdTrigger - TriggerIn")
    actorMgr:GetActor("77242"):QuestNarratorTask(datas.NarratorWithId_7724299, nil)
    this:DestroySelf()
end

function Q7724202RmdTrigger:PreTriggerIn()
    print("Q7724202RmdTrigger - PreTriggerIn")
end

function Q7724202RmdTrigger:LightUpTriggerIn()
    print("Q7724202RmdTrigger - LightUpTriggerIn")
end

function Q7724202RmdTrigger:TriggerOut()
    print("Q7724202RmdTrigger - TriggerOut")
end

return Q7724202RmdTrigger
