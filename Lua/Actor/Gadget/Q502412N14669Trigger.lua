require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502412N14669Trigger = class("Q502412N14669Trigger", GadgetActorProxy)
Q502412N14669Trigger.defaultAlias = "Q502412N14669Trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502412N14669Trigger:OnPostDataPrepare()
    print("Q502412N14669Trigger - OnPostDataPrepare")
    this = self
end

function Q502412N14669Trigger:OnPostComponentPrepare()
    print("Q502412N14669Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 9, 150, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502412N14669Trigger:TriggerIn()
    print("Q502412N14669Trigger - TriggerIn")
    actorMgr:GetActor("5024"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("5024"):CreateQuestNpcById(502412, npcs.Npc14669.id, 0, false, 0)
        actorMgr:GetActor("5024"):RequestInteraction(npcs.Npc14669.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q502412N14669Trigger:PreTriggerIn()
    print("Q502412N14669Trigger - PreTriggerIn")
end

function Q502412N14669Trigger:LightUpTriggerIn()
    print("Q502412N14669Trigger - LightUpTriggerIn")
end

function Q502412N14669Trigger:TriggerOut()
    print("Q502412N14669Trigger - TriggerOut")
end

return Q502412N14669Trigger
