require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602301Trigger_reminder01 = class("Q7602301Trigger_reminder01", GadgetActorProxy)
Q7602301Trigger_reminder01.defaultAlias = "Q7602301Trigger_reminder01"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602301Trigger_reminder01:OnPostDataPrepare()
    print("Q7602301Trigger_reminder01 - OnPostDataPrepare")
    this = self
end

function Q7602301Trigger_reminder01:OnPostComponentPrepare()
    print("Q7602301Trigger_reminder01 - OnPostComponentPrepare")
    this:AddComponentTrigger(130, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602301Trigger_reminder01:TriggerIn()
    print("Q7602301Trigger_reminder01 - TriggerIn")
    actorMgr:GetActor("76023"):QuestNarratorTask(datas.NarratorWithId_7602301, nil)
    this:DestroySelf()
end

function Q7602301Trigger_reminder01:PreTriggerIn()
    print("Q7602301Trigger_reminder01 - PreTriggerIn")
end

function Q7602301Trigger_reminder01:LightUpTriggerIn()
    print("Q7602301Trigger_reminder01 - LightUpTriggerIn")
end

function Q7602301Trigger_reminder01:TriggerOut()
    print("Q7602301Trigger_reminder01 - TriggerOut")
end

return Q7602301Trigger_reminder01
