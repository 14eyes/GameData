require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411301Trigger = class("Q7411301Trigger", GadgetActorProxy)
Q7411301Trigger.defaultAlias = "Q7411301Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411301Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411301Trigger] OnPostDataPrepare")
    this = self
end

function Q7411301Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411301Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(38, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411301Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411301Trigger] TriggerIn")
    actorMgr:GetActor("74113"):NarratorOnlyTaskByData(datas.Q7411301near)
    actorUtils.FinishQuestID(false, 7411301)
end

function Q7411301Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411301Trigger] PreTriggerIn")
end

function Q7411301Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411301Trigger] LightUpTriggerIn")
end

function Q7411301Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411301Trigger] TriggerOut")
end

return Q7411301Trigger
