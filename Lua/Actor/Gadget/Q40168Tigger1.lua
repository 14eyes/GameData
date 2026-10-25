require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40168Tigger1 = class("Q40168Tigger1", GadgetActorProxy)
Q40168Tigger1.defaultAlias = "Q40168Tigger1"
local Q40168ClientConfig = require("Quest/Client/Q40168ClientConfig")

local this
local subIDs = Q40168ClientConfig.SubIDs
local datas = Q40168ClientConfig.Datas
local npcs = Q40168ClientConfig.Npcs
local points = Q40168ClientConfig.Points

function Q40168Tigger1:OnPostDataPrepare()
    print("Q40168Tigger1 - OnPostDataPrepare")
    this = self
end

function Q40168Tigger1:OnPostComponentPrepare()
    print("Q40168Tigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40168)
end

function Q40168Tigger1:TriggerIn()
    print("Q40168Tigger1 - TriggerIn")
    actorMgr:GetActor("40168"):QuestNarratorTask(datas.NarratorWithId7, nil)
    this:DestroySelf()
end

function Q40168Tigger1:PreTriggerIn()
    print("Q40168Tigger1 - PreTriggerIn")
end

function Q40168Tigger1:LightUpTriggerIn()
    print("Q40168Tigger1 - LightUpTriggerIn")
end

function Q40168Tigger1:TriggerOut()
    print("Q40168Tigger1 - TriggerOut")
end

return Q40168Tigger1
