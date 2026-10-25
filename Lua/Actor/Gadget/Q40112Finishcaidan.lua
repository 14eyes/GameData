require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40112Finishcaidan = class("Q40112Finishcaidan", GadgetActorProxy)
Q40112Finishcaidan.defaultAlias = "Q40112Finishcaidan"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q40112Finishcaidan:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q40112Finishcaidan] OnPostDataPrepare")
    this = self
end

function Q40112Finishcaidan:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q40112Finishcaidan] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40112Finishcaidan:TriggerIn()
    print("[MainId: 40112][Trigger: Q40112Finishcaidan] TriggerIn")
    actorUtils.FinishQuestID(false, 1020302)
    this:DestroySelf()
end

function Q40112Finishcaidan:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q40112Finishcaidan] PreTriggerIn")
end

function Q40112Finishcaidan:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q40112Finishcaidan] LightUpTriggerIn")
end

function Q40112Finishcaidan:TriggerOut()
    print("[MainId: 40112][Trigger: Q40112Finishcaidan] TriggerOut")
end

return Q40112Finishcaidan
