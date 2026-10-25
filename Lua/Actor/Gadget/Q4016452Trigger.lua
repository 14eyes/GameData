require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016452Trigger = class("Q4016452Trigger", GadgetActorProxy)
Q4016452Trigger.defaultAlias = "Q4016452Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016452Trigger:OnPostDataPrepare()
    print("Q4016452Trigger - OnPostDataPrepare")
    this = self
end

function Q4016452Trigger:OnPostComponentPrepare()
    print("Q4016452Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016452Trigger:TriggerIn()
    print("Q4016452Trigger - TriggerIn")
    local actor = actorMgr:GetActor("40164")
    globalActor:PlayerEnterDungeon(22, 1206, false, quest, 0)
    this:DestroySelf()
end

function Q4016452Trigger:PreTriggerIn()
    print("Q4016452Trigger - PreTriggerIn")
end

function Q4016452Trigger:LightUpTriggerIn()
    print("Q4016452Trigger - LightUpTriggerIn")
end

function Q4016452Trigger:TriggerOut()
    print("Q4016452Trigger - TriggerOut")
end

return Q4016452Trigger
