require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612502_CreatFinish = class("Q7612502_CreatFinish", GadgetActorProxy)
Q7612502_CreatFinish.defaultAlias = "Q7612502_CreatFinish"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612502_CreatFinish:OnPostDataPrepare()
    print("Q7612502_CreatFinish - OnPostDataPrepare")
    this = self
end

function Q7612502_CreatFinish:OnPostComponentPrepare()
    print("Q7612502_CreatFinish - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612502_CreatFinish:TriggerIn()
    print("Q7612502_CreatFinish - TriggerIn")
    actorMgr:CreateActorWithPos("Q7612502_Finish", "Actor/Gadget/Q7612502_Finish", 70900002, 0, points._Q7612502_FinishPoint_.pos, points._Q7612502_FinishPoint_.rot, true, false, 3)
    this:DestroySelf()
end

function Q7612502_CreatFinish:PreTriggerIn()
    print("Q7612502_CreatFinish - PreTriggerIn")
end

function Q7612502_CreatFinish:LightUpTriggerIn()
    print("Q7612502_CreatFinish - LightUpTriggerIn")
end

function Q7612502_CreatFinish:TriggerOut()
    print("Q7612502_CreatFinish - TriggerOut")
end

return Q7612502_CreatFinish
