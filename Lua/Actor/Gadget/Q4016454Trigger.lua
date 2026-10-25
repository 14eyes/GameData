require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016454Trigger = class("Q4016454Trigger", GadgetActorProxy)
Q4016454Trigger.defaultAlias = "Q4016454Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016454Trigger:OnPostDataPrepare()
    print("Q4016454Trigger - OnPostDataPrepare")
    this = self
end

function Q4016454Trigger:OnPostComponentPrepare()
    print("Q4016454Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016454Trigger:TriggerIn()
    print("Q4016454Trigger - TriggerIn")
    actorMgr:GetActor("40164"):PlayerEnterDungeonWithData(21, 1208, 4016454, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q4016454Trigger:PreTriggerIn()
    print("Q4016454Trigger - PreTriggerIn")
end

function Q4016454Trigger:LightUpTriggerIn()
    print("Q4016454Trigger - LightUpTriggerIn")
end

function Q4016454Trigger:TriggerOut()
    print("Q4016454Trigger - TriggerOut")
end

return Q4016454Trigger
