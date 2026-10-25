require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72175 = class("Quest72175", QuestActorProxy)
Quest72175.defaultAlias = "Quest72175"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72175:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72175:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217516"] = self.OnSubStart7217516,
        ["7217501"] = self.OnSubStart7217501,
        ["7217517"] = self.OnSubStart7217517,
        ["7217510"] = self.OnSubStart7217510,
        ["7217504"] = self.OnSubStart7217504,
        ["7217505"] = self.OnSubStart7217505,
        ["7217506"] = self.OnSubStart7217506,
        ["7217507"] = self.OnSubStart7217507,
        ["7217508"] = self.OnSubStart7217508,
        ["7217503"] = self.OnSubStart7217503,
        ["7217502"] = self.OnSubStart7217502,
        ["7217518"] = self.OnSubStart7217518,
        ["7217509"] = self.OnSubStart7217509,
        ["7217512"] = self.OnSubStart7217512,
        ["7217513"] = self.OnSubStart7217513,
        ["7217514"] = self.OnSubStart7217514,
        ["7217515"] = self.OnSubStart7217515,
        ["7217511"] = self.OnSubStart7217511
    }
end

function Quest72175:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217516"] = self.OnSubFinish7217516,
        ["7217501"] = self.OnSubFinish7217501,
        ["7217517"] = self.OnSubFinish7217517,
        ["7217510"] = self.OnSubFinish7217510,
        ["7217504"] = self.OnSubFinish7217504,
        ["7217505"] = self.OnSubFinish7217505,
        ["7217506"] = self.OnSubFinish7217506,
        ["7217507"] = self.OnSubFinish7217507,
        ["7217508"] = self.OnSubFinish7217508,
        ["7217503"] = self.OnSubFinish7217503,
        ["7217502"] = self.OnSubFinish7217502,
        ["7217518"] = self.OnSubFinish7217518,
        ["7217509"] = self.OnSubFinish7217509,
        ["7217512"] = self.OnSubFinish7217512,
        ["7217513"] = self.OnSubFinish7217513,
        ["7217514"] = self.OnSubFinish7217514,
        ["7217515"] = self.OnSubFinish7217515,
        ["7217511"] = self.OnSubFinish7217511
    }
end

function Quest72175:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217516"] = self.OnSubFailed7217516,
        ["7217501"] = self.OnSubFailed7217501,
        ["7217517"] = self.OnSubFailed7217517,
        ["7217510"] = self.OnSubFailed7217510,
        ["7217504"] = self.OnSubFailed7217504,
        ["7217505"] = self.OnSubFailed7217505,
        ["7217506"] = self.OnSubFailed7217506,
        ["7217507"] = self.OnSubFailed7217507,
        ["7217508"] = self.OnSubFailed7217508,
        ["7217503"] = self.OnSubFailed7217503,
        ["7217502"] = self.OnSubFailed7217502,
        ["7217518"] = self.OnSubFailed7217518,
        ["7217509"] = self.OnSubFailed7217509,
        ["7217512"] = self.OnSubFailed7217512,
        ["7217513"] = self.OnSubFailed7217513,
        ["7217514"] = self.OnSubFailed7217514,
        ["7217515"] = self.OnSubFailed7217515,
        ["7217511"] = self.OnSubFailed7217511
    }
end

function Quest72175:Start()
    print("Start")
end

function Quest72175:OnDestroy()
    print("OnDestroy")
end

function Quest72175:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72175:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72175:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72175:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72175:OnSubStart7217516(arg1)
    print("OnSubStart7217516")
    self:CreateQuestNpc(arg1, npcs.Npc20333Data.id, 1)
    actorMgr:CreateActorWithPos("LED_Enter", "Actor/Gadget/LED_Enter", 70900002, 0, sceneData:GetDummyPoint(3, "Q_72175_QuestAccept_Pos").pos, sceneData:GetDummyPoint(3, "Q_72175_QuestAccept_Pos").rot, true, false, 3)
end

function Quest72175:OnSubFinish7217516(arg1)
    print("OnSubFinish7217516")
end

function Quest72175:OnSubFailed7217516(arg1)
    print("OnSubFailed7217516")
end

function Quest72175:OnSubStart7217501(arg1)
    print("OnSubStart7217501")
    self:CreateQuestNpc(arg1, npcs.Npc20333Data.id, 1)
end

function Quest72175:OnSubFinish7217501(arg1)
    print("OnSubFinish7217501")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72175:OnSubFailed7217501(arg1)
    print("OnSubFailed7217501")
end

function Quest72175:OnSubStart7217517(arg1)
    print("OnSubStart7217517")
    self:CreateQuestNpc(arg1, npcs.Npc20333Data.id, 1)
end

function Quest72175:OnSubFinish7217517(arg1)
    print("OnSubFinish7217517")
    self:RequestInteraction(npcs.Npc20333Data.alias)
end

function Quest72175:OnSubFailed7217517(arg1)
    print("OnSubFailed7217517")
end

function Quest72175:OnSubStart7217510(arg1)
    print("OnSubStart7217510")
    self:CreateQuestNpc(arg1, npcs.Npc20333Data.id, 1)
end

function Quest72175:OnSubFinish7217510(arg1)
    print("OnSubFinish7217510")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72175:OnSubFailed7217510(arg1)
    print("OnSubFailed7217510")
end

function Quest72175:OnSubStart7217504(arg1)
    print("OnSubStart7217504")
end

function Quest72175:OnSubFinish7217504(arg1)
    print("OnSubFinish7217504")
end

function Quest72175:OnSubFailed7217504(arg1)
    print("OnSubFailed7217504")
end

function Quest72175:OnSubStart7217505(arg1)
    print("OnSubStart7217505")
end

function Quest72175:OnSubFinish7217505(arg1)
    print("OnSubFinish7217505")
end

function Quest72175:OnSubFailed7217505(arg1)
    print("OnSubFailed7217505")
end

function Quest72175:OnSubStart7217506(arg1)
    print("OnSubStart7217506")
end

function Quest72175:OnSubFinish7217506(arg1)
    print("OnSubFinish7217506")
    self:NarratorOnlyTask(datas.Reminder_Moral, nil, "")
end

function Quest72175:OnSubFailed7217506(arg1)
    print("OnSubFailed7217506")
end

function Quest72175:OnSubStart7217507(arg1)
    print("OnSubStart7217507")
end

function Quest72175:OnSubFinish7217507(arg1)
    print("OnSubFinish7217507")
end

function Quest72175:OnSubFailed7217507(arg1)
    print("OnSubFailed7217507")
end

function Quest72175:OnSubStart7217508(arg1)
    print("OnSubStart7217508")
end

function Quest72175:OnSubFinish7217508(arg1)
    print("OnSubFinish7217508")
end

function Quest72175:OnSubFailed7217508(arg1)
    print("OnSubFailed7217508")
end

function Quest72175:OnSubStart7217503(arg1)
    print("OnSubStart7217503")
end

function Quest72175:OnSubFinish7217503(arg1)
    print("OnSubFinish7217503")
end

function Quest72175:OnSubFailed7217503(arg1)
    print("OnSubFailed7217503")
end

function Quest72175:OnSubStart7217502(arg1)
    print("OnSubStart7217502")
    self:CreateQuestNpc(arg1, npcs.Npc20333Data.id, 1)
end

function Quest72175:OnSubFinish7217502(arg1)
    print("OnSubFinish7217502")
end

function Quest72175:OnSubFailed7217502(arg1)
    print("OnSubFailed7217502")
end

function Quest72175:OnSubStart7217518(arg1)
    print("OnSubStart7217518")
end

function Quest72175:OnSubFinish7217518(arg1)
    print("OnSubFinish7217518")
end

function Quest72175:OnSubFailed7217518(arg1)
    print("OnSubFailed7217518")
end

function Quest72175:OnSubStart7217509(arg1)
    print("OnSubStart7217509")
    self:CreateQuestNpc(arg1, npcs.Npc20333Data.id, 1)
end

function Quest72175:OnSubFinish7217509(arg1)
    print("OnSubFinish7217509")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20333Data.alias)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72175:OnSubFailed7217509(arg1)
    print("OnSubFailed7217509")
end

function Quest72175:OnSubStart7217512(arg1)
    print("OnSubStart7217512")
end

function Quest72175:OnSubFinish7217512(arg1)
    print("OnSubFinish7217512")
end

function Quest72175:OnSubFailed7217512(arg1)
    print("OnSubFailed7217512")
end

function Quest72175:OnSubStart7217513(arg1)
    print("OnSubStart7217513")
end

function Quest72175:OnSubFinish7217513(arg1)
    print("OnSubFinish7217513")
end

function Quest72175:OnSubFailed7217513(arg1)
    print("OnSubFailed7217513")
end

function Quest72175:OnSubStart7217514(arg1)
    print("OnSubStart7217514")
end

function Quest72175:OnSubFinish7217514(arg1)
    print("OnSubFinish7217514")
end

function Quest72175:OnSubFailed7217514(arg1)
    print("OnSubFailed7217514")
end

function Quest72175:OnSubStart7217515(arg1)
    print("OnSubStart7217515")
end

function Quest72175:OnSubFinish7217515(arg1)
    print("OnSubFinish7217515")
end

function Quest72175:OnSubFailed7217515(arg1)
    print("OnSubFailed7217515")
end

function Quest72175:OnSubStart7217511(arg1)
    print("OnSubStart7217511")
end

function Quest72175:OnSubFinish7217511(arg1)
    print("OnSubFinish7217511")
end

function Quest72175:OnSubFailed7217511(arg1)
    print("OnSubFailed7217511")
end

return Quest72175
