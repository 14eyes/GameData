require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502007_02T = class("Q1502007_02T", GadgetActorProxy)
Q1502007_02T.defaultAlias = "Q1502007_02T"
local Q15020ClientConfig = require("Quest/Client/Q15020ClientConfig")

local this
local subIDs = Q15020ClientConfig.SubIDs
local datas = Q15020ClientConfig.Datas
local npcs = Q15020ClientConfig.Npcs
local points = Q15020ClientConfig.Points

function Q1502007_02T:OnPostDataPrepare()
    print("Q1502007_02T - OnPostDataPrepare")
    this = self
end

function Q1502007_02T:OnPostComponentPrepare()
    print("Q1502007_02T - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15020)
end

function Q1502007_02T:TriggerIn()
    print("Q1502007_02T - TriggerIn")
    actorMgr:GetActor("15020"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("15020"):QuestNarratorTask(datas.NarratorWithId_1502002, nil)
        this:DestroySelf()
    end)
end

function Q1502007_02T:PreTriggerIn()
    print("Q1502007_02T - PreTriggerIn")
end

function Q1502007_02T:LightUpTriggerIn()
    print("Q1502007_02T - LightUpTriggerIn")
end

function Q1502007_02T:TriggerOut()
    print("Q1502007_02T - TriggerOut")
end

return Q1502007_02T
