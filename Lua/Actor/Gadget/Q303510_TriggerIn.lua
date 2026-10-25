require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303510_TriggerIn = class("Q303510_TriggerIn", GadgetActorProxy)
Q303510_TriggerIn.defaultAlias = "Q303510_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303510_TriggerIn:OnPostDataPrepare()
    print("Q303510_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303510_TriggerIn:OnPostComponentPrepare()
    print("Q303510_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303510_TriggerIn:TriggerIn()
    print("Q303510_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):PlayerEnterDungeonWithData(2, 1317, 303510, 1, datas.PlayerEnterDungeonData_Q303510, nil, nil)
    this:DestroySelf()
end

function Q303510_TriggerIn:PreTriggerIn()
    print("Q303510_TriggerIn - PreTriggerIn")
end

function Q303510_TriggerIn:LightUpTriggerIn()
    print("Q303510_TriggerIn - LightUpTriggerIn")
end

function Q303510_TriggerIn:TriggerOut()
    print("Q303510_TriggerIn - TriggerOut")
end

return Q303510_TriggerIn
