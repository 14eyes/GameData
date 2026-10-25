require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001303Trigger = class("Q1001303Trigger", GadgetActorProxy)
Q1001303Trigger.defaultAlias = "Q1001303Trigger"
local Q10013ClientConfig = require("Quest/Client/Q10013ClientConfig")

local this
local subIDs = Q10013ClientConfig.SubIDs
local datas = Q10013ClientConfig.Datas
local npcs = Q10013ClientConfig.Npcs
local points = Q10013ClientConfig.Points

function Q1001303Trigger:OnPostDataPrepare()
    print("Q1001303Trigger - OnPostDataPrepare")
    this = self
end

function Q1001303Trigger:OnPostComponentPrepare()
    print("Q1001303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10013)
end

function Q1001303Trigger:TriggerIn()
    print("Q1001303Trigger - TriggerIn")
    actorMgr:GetActor("10013"):PlayerEnterDungeonWithData(2019, 1325, 1001303, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Q1001303Trigger:PreTriggerIn()
    print("Q1001303Trigger - PreTriggerIn")
end

function Q1001303Trigger:LightUpTriggerIn()
    print("Q1001303Trigger - LightUpTriggerIn")
end

function Q1001303Trigger:TriggerOut()
    print("Q1001303Trigger - TriggerOut")
end

return Q1001303Trigger
