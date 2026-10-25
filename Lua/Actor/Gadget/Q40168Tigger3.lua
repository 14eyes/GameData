require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40168Tigger3 = class("Q40168Tigger3", GadgetActorProxy)
Q40168Tigger3.defaultAlias = "Q40168Tigger3"
local Q40168ClientConfig = require("Quest/Client/Q40168ClientConfig")

local this
local subIDs = Q40168ClientConfig.SubIDs
local datas = Q40168ClientConfig.Datas
local npcs = Q40168ClientConfig.Npcs
local points = Q40168ClientConfig.Points

function Q40168Tigger3:OnPostDataPrepare()
    print("Q40168Tigger3 - OnPostDataPrepare")
    this = self
end

function Q40168Tigger3:OnPostComponentPrepare()
    print("Q40168Tigger3 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(80, 80, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40168)
end

function Q40168Tigger3:TriggerIn()
    print("Q40168Tigger3 - TriggerIn")
    actorMgr:GetActor("40168"):QuestNarratorTask(datas.NarratorWithId10, nil)
end

function Q40168Tigger3:PreTriggerIn()
    print("Q40168Tigger3 - PreTriggerIn")
end

function Q40168Tigger3:LightUpTriggerIn()
    print("Q40168Tigger3 - LightUpTriggerIn")
end

function Q40168Tigger3:TriggerOut()
    print("Q40168Tigger3 - TriggerOut")
end

return Q40168Tigger3
