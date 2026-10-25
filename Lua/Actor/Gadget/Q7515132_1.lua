require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515132_1 = class("Q7515132_1", GadgetActorProxy)
Q7515132_1.defaultAlias = "Q7515132_1"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515132_1:OnPostDataPrepare()
    print("Q7515132_1 - OnPostDataPrepare")
    this = self
end

function Q7515132_1:OnPostComponentPrepare()
    print("Q7515132_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515132_1:TriggerIn()
    print("Q7515132_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 7515132)
    this:DestroySelf()
end

function Q7515132_1:PreTriggerIn()
    print("Q7515132_1 - PreTriggerIn")
end

function Q7515132_1:LightUpTriggerIn()
    print("Q7515132_1 - LightUpTriggerIn")
end

function Q7515132_1:TriggerOut()
    print("Q7515132_1 - TriggerOut")
end

return Q7515132_1
