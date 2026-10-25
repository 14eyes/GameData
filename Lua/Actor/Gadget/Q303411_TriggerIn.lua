require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303411_TriggerIn = class("Q303411_TriggerIn", GadgetActorProxy)
Q303411_TriggerIn.defaultAlias = "Q303411_TriggerIn"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303411_TriggerIn:OnPostDataPrepare()
    print("Q303411_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303411_TriggerIn:OnPostComponentPrepare()
    print("Q303411_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303411_TriggerIn:TriggerIn()
    print("Q303411_TriggerIn - TriggerIn")
    actorMgr:GetActor("3034"):PlayerEnterDungeonWithData(1, 1314, 303411, 1, datas.PlayerEnterDungeonData_Q303411, nil, nil)
    this:DestroySelf()
end

function Q303411_TriggerIn:PreTriggerIn()
    print("Q303411_TriggerIn - PreTriggerIn")
end

function Q303411_TriggerIn:LightUpTriggerIn()
    print("Q303411_TriggerIn - LightUpTriggerIn")
end

function Q303411_TriggerIn:TriggerOut()
    print("Q303411_TriggerIn - TriggerOut")
end

return Q303411_TriggerIn
