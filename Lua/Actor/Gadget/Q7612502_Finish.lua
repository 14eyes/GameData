require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612502_Finish = class("Q7612502_Finish", GadgetActorProxy)
Q7612502_Finish.defaultAlias = "Q7612502_Finish"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612502_Finish:OnPostDataPrepare()
    print("Q7612502_Finish - OnPostDataPrepare")
    this = self
end

function Q7612502_Finish:OnPostComponentPrepare()
    print("Q7612502_Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612502_Finish:TriggerIn()
    print("Q7612502_Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 7612502)
    this:DestroySelf()
end

function Q7612502_Finish:PreTriggerIn()
    print("Q7612502_Finish - PreTriggerIn")
end

function Q7612502_Finish:LightUpTriggerIn()
    print("Q7612502_Finish - LightUpTriggerIn")
end

function Q7612502_Finish:TriggerOut()
    print("Q7612502_Finish - TriggerOut")
end

return Q7612502_Finish
