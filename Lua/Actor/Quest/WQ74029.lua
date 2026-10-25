require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74029 = class("Quest74029", QuestActorProxy)
Quest74029.defaultAlias = "Quest74029"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74029:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402901"] = self.OnSubStart7402901,
        ["7402902"] = self.OnSubStart7402902,
        ["7402905"] = self.OnSubStart7402905
    }
end

function Quest74029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402901"] = self.OnSubFinish7402901,
        ["7402902"] = self.OnSubFinish7402902,
        ["7402905"] = self.OnSubFinish7402905
    }
end

function Quest74029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7402901"] = self.OnSubFailed7402901}
end

function Quest74029:Start()
    print("Start")
end

function Quest74029:OnDestroy()
    print("OnDestroy")
end

function Quest74029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74029:OnSubStart7402901(arg1)
    print("OnSubStart7402901")
    this:CreateQuestNpc(arg1, npcs.Npc5321Data.id, 0)
end

function Quest74029:OnSubFinish7402901(arg1)
    print("OnSubFinish7402901")
end

function Quest74029:OnSubFailed7402901(arg1)
    print("OnSubFailed7402901")
    this:DestroyQuestNpcActor(npcs.Npc5321Data.alias, 3)
end

function Quest74029:OnSubStart7402902(arg1)
    print("OnSubStart7402902")
end

function Quest74029:OnSubFinish7402902(arg1)
    print("OnSubFinish7402902")
end

function Quest74029:OnSubStart7402905(arg1)
    print("OnSubStart7402905")
    actorMgr:CreateActorWithPos("Q74029Trigger", "Actor/Gadget/Q74029Trigger", 70900002, 0, points.TPos_Q74029Trigger.pos, points.TPos_Q74029Trigger.rot, true, false, 3)
end

function Quest74029:OnSubFinish7402905(arg1)
    print("OnSubFinish7402905")
    this:SafeDestroyQuestNpc(npcs.Npc5321Data.alias, 3)
end

return Quest74029
