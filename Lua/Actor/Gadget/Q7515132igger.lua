require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515132igger = class("Q7515132igger", GadgetActorProxy)
Q7515132igger.defaultAlias = "Q7515132igger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515132igger:OnPostDataPrepare()
    print("Q7515132igger - OnPostDataPrepare")
    this = self
end

function Q7515132igger:OnPostComponentPrepare()
    print("Q7515132igger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515132igger:TriggerIn()
    print("Q7515132igger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515132)
    this:DestroySelf()
end

function Q7515132igger:PreTriggerIn()
    print("Q7515132igger - PreTriggerIn")
end

function Q7515132igger:LightUpTriggerIn()
    print("Q7515132igger - LightUpTriggerIn")
end

function Q7515132igger:TriggerOut()
    print("Q7515132igger - TriggerOut")
end

return Q7515132igger
