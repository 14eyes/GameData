require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502212_Finish = class("Q1502212_Finish", GadgetActorProxy)
Q1502212_Finish.defaultAlias = "Q1502212_Finish"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502212_Finish:OnPostDataPrepare()
    print("Q1502212_Finish - OnPostDataPrepare")
    this = self
end

function Q1502212_Finish:OnPostComponentPrepare()
    print("Q1502212_Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502212_Finish:TriggerIn()
    print("Q1502212_Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 1502212)
    this:DestroySelf()
end

function Q1502212_Finish:PreTriggerIn()
    print("Q1502212_Finish - PreTriggerIn")
end

function Q1502212_Finish:LightUpTriggerIn()
    print("Q1502212_Finish - LightUpTriggerIn")
end

function Q1502212_Finish:TriggerOut()
    print("Q1502212_Finish - TriggerOut")
end

return Q1502212_Finish
