require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303401_TriggerIn = class("Q303401_TriggerIn", GadgetActorProxy)
Q303401_TriggerIn.defaultAlias = "Q303401_TriggerIn"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303401_TriggerIn:OnPostDataPrepare()
    print("Q303401_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303401_TriggerIn:OnPostComponentPrepare()
    print("Q303401_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303401_TriggerIn:TriggerIn()
    print("Q303401_TriggerIn - TriggerIn")
    actorMgr:GetActor("3034"):PlayerEnterDungeonWithData(1979, 1314, 303401, 1, datas.PlayerEnterDungeonData_Q303402, nil, nil)
    this:DestroySelf()
end

function Q303401_TriggerIn:PreTriggerIn()
    print("Q303401_TriggerIn - PreTriggerIn")
end

function Q303401_TriggerIn:LightUpTriggerIn()
    print("Q303401_TriggerIn - LightUpTriggerIn")
end

function Q303401_TriggerIn:TriggerOut()
    print("Q303401_TriggerIn - TriggerOut")
end

return Q303401_TriggerIn
