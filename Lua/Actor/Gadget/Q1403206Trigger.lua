require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403206Trigger = class("Q1403206Trigger", GadgetActorProxy)
Q1403206Trigger.defaultAlias = "Q1403206Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403206Trigger:OnPostDataPrepare()
    print("Q1403206Trigger - OnPostDataPrepare")
    this = self
end

function Q1403206Trigger:OnPostComponentPrepare()
    print("Q1403206Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403206Trigger:TriggerIn()
    print("Q1403206Trigger - TriggerIn")
    actorMgr:GetActor("14032"):QuestNarratorTask(datas.NarratorWithId1403203, nil)
    actorMgr:GetActor("14032"):CreateQuestNpcById(1403206, npcs.Npc14095.id, 1, true, 0.5)
    this:DestroySelf()
end

function Q1403206Trigger:PreTriggerIn()
    print("Q1403206Trigger - PreTriggerIn")
end

function Q1403206Trigger:LightUpTriggerIn()
    print("Q1403206Trigger - LightUpTriggerIn")
end

function Q1403206Trigger:TriggerOut()
    print("Q1403206Trigger - TriggerOut")
end

return Q1403206Trigger
