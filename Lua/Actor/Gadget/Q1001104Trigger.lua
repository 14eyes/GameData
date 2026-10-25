require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001104Trigger = class("Q1001104Trigger", GadgetActorProxy)
Q1001104Trigger.defaultAlias = "Q1001104Trigger"
local Q10011ClientConfig = require("Quest/Client/Q10011ClientConfig")

local this
local subIDs = Q10011ClientConfig.SubIDs
local datas = Q10011ClientConfig.Datas
local npcs = Q10011ClientConfig.Npcs
local points = Q10011ClientConfig.Points

function Q1001104Trigger:OnPostDataPrepare()
    print("Q1001104Trigger - OnPostDataPrepare")
    this = self
end

function Q1001104Trigger:OnPostComponentPrepare()
    print("Q1001104Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10011)
end

function Q1001104Trigger:TriggerIn()
    print("Q1001104Trigger - TriggerIn")
    actorMgr:GetActor("10011"):PlayerEnterDungeonWithData(2017, 1320, 1001104, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Q1001104Trigger:PreTriggerIn()
    print("Q1001104Trigger - PreTriggerIn")
end

function Q1001104Trigger:LightUpTriggerIn()
    print("Q1001104Trigger - LightUpTriggerIn")
end

function Q1001104Trigger:TriggerOut()
    print("Q1001104Trigger - TriggerOut")
end

return Q1001104Trigger
