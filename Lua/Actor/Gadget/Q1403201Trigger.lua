require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403201Trigger = class("Q1403201Trigger", GadgetActorProxy)
Q1403201Trigger.defaultAlias = "Q1403201Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403201Trigger:OnPostDataPrepare()
    print("Q1403201Trigger - OnPostDataPrepare")
    this = self
end

function Q1403201Trigger:OnPostComponentPrepare()
    print("Q1403201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403201Trigger:TriggerIn()
    print("Q1403201Trigger - TriggerIn")
    actorMgr:GetActor("14032"):PlayerEnterDungeonWithData(1223, 1203, 1403201, 1, datas.PlayerEnterDungeonData14032, nil, nil)
end

function Q1403201Trigger:PreTriggerIn()
    print("Q1403201Trigger - PreTriggerIn")
end

function Q1403201Trigger:LightUpTriggerIn()
    print("Q1403201Trigger - LightUpTriggerIn")
end

function Q1403201Trigger:TriggerOut()
    print("Q1403201Trigger - TriggerOut")
end

return Q1403201Trigger
