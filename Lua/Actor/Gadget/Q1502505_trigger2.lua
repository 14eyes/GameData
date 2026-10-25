require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502505_trigger2 = class("Q1502505_trigger2", GadgetActorProxy)
Q1502505_trigger2.defaultAlias = "Q1502505_trigger2"
local Q15025ClientConfig = require("Quest/Client/Q15025ClientConfig")

local this
local subIDs = Q15025ClientConfig.SubIDs
local datas = Q15025ClientConfig.Datas
local npcs = Q15025ClientConfig.Npcs
local points = Q15025ClientConfig.Points

function Q1502505_trigger2:OnPostDataPrepare()
    print("Q1502505_trigger2 - OnPostDataPrepare")
    this = self
end

function Q1502505_trigger2:OnPostComponentPrepare()
    print("Q1502505_trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15025)
end

function Q1502505_trigger2:TriggerIn()
    print("Q1502505_trigger2 - TriggerIn")
    actorMgr:GetActor("15025"):QuestNarratorTask(datas.NarratorWithId_1502501, nil)
    this:DestroySelf()
end

function Q1502505_trigger2:PreTriggerIn()
    print("Q1502505_trigger2 - PreTriggerIn")
end

function Q1502505_trigger2:LightUpTriggerIn()
    print("Q1502505_trigger2 - LightUpTriggerIn")
end

function Q1502505_trigger2:TriggerOut()
    print("Q1502505_trigger2 - TriggerOut")
end

return Q1502505_trigger2
