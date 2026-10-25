require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411608Trigger = class("Q7411608Trigger", GadgetActorProxy)
Q7411608Trigger.defaultAlias = "Q7411608Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411608Trigger:OnPostDataPrepare()
    print("Q7411608Trigger - OnPostDataPrepare")
    this = self
end

function Q7411608Trigger:OnPostComponentPrepare()
    print("Q7411608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411608Trigger:TriggerIn()
    print("Q7411608Trigger - TriggerIn")
    local actor = actorMgr:GetActor("74116")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId7411608)
    actor:EnterSceneLookCamera({x = 2915, y = 440, z = 3112.864}, 0, 4, true, false)
    actorUtils.FinishQuestID(false, 7411608)
end

function Q7411608Trigger:PreTriggerIn()
    print("Q7411608Trigger - PreTriggerIn")
end

function Q7411608Trigger:LightUpTriggerIn()
    print("Q7411608Trigger - LightUpTriggerIn")
end

function Q7411608Trigger:TriggerOut()
    print("Q7411608Trigger - TriggerOut")
end

return Q7411608Trigger
