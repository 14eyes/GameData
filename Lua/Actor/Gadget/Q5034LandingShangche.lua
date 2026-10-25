require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5034LandingShangche = class("Q5034LandingShangche", GadgetActorProxy)
Q5034LandingShangche.defaultAlias = "Q5034LandingShangche"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q5034LandingShangche:OnPostDataPrepare()
    print("Q5034LandingShangche - OnPostDataPrepare")
    this = self
end

function Q5034LandingShangche:OnPostComponentPrepare()
    print("Q5034LandingShangche - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q5034LandingShangche:TriggerIn()
    print("Q5034LandingShangche - TriggerIn")
    actorMgr:GetActor("5034"):CallDelayByQuest("503401", 3, function(arg1)
        actorUtils.TryDoSkill(1)
        print("checkcheck")
    end)
end

function Q5034LandingShangche:PreTriggerIn()
    print("Q5034LandingShangche - PreTriggerIn")
end

function Q5034LandingShangche:LightUpTriggerIn()
    print("Q5034LandingShangche - LightUpTriggerIn")
end

function Q5034LandingShangche:TriggerOut()
    print("Q5034LandingShangche - TriggerOut")
end

return Q5034LandingShangche
