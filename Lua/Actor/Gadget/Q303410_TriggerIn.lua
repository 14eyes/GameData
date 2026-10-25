require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303410_TriggerIn = class("Q303410_TriggerIn", GadgetActorProxy)
Q303410_TriggerIn.defaultAlias = "Q303410_TriggerIn"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303410_TriggerIn:OnPostDataPrepare()
    print("Q303410_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303410_TriggerIn:OnPostComponentPrepare()
    print("Q303410_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303410_TriggerIn:TriggerIn()
    print("Q303410_TriggerIn - TriggerIn")
    actorMgr:GetActor("3034"):PlayerEnterDungeonWithData(1, 1316, 303410, 1, datas.PlayerEnterDungeonData_Q303410, nil, nil)
    this:DestroySelf()
end

function Q303410_TriggerIn:PreTriggerIn()
    print("Q303410_TriggerIn - PreTriggerIn")
end

function Q303410_TriggerIn:LightUpTriggerIn()
    print("Q303410_TriggerIn - LightUpTriggerIn")
end

function Q303410_TriggerIn:TriggerOut()
    print("Q303410_TriggerIn - TriggerOut")
end

return Q303410_TriggerIn
