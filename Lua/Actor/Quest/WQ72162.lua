require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72162 = class("Quest72162", QuestActorProxy)
Quest72162.defaultAlias = "Quest72162"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72162:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72162:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216216"] = self.OnSubStart7216216,
        ["7216201"] = self.OnSubStart7216201,
        ["7216202"] = self.OnSubStart7216202,
        ["7216203"] = self.OnSubStart7216203,
        ["7216205"] = self.OnSubStart7216205,
        ["7216204"] = self.OnSubStart7216204,
        ["7216206"] = self.OnSubStart7216206,
        ["7216217"] = self.OnSubStart7216217,
        ["7216210"] = self.OnSubStart7216210,
        ["7216207"] = self.OnSubStart7216207,
        ["7216208"] = self.OnSubStart7216208,
        ["7216209"] = self.OnSubStart7216209,
        ["7216219"] = self.OnSubStart7216219,
        ["7216211"] = self.OnSubStart7216211,
        ["7216212"] = self.OnSubStart7216212,
        ["7216227"] = self.OnSubStart7216227,
        ["7216220"] = self.OnSubStart7216220,
        ["7216213"] = self.OnSubStart7216213,
        ["7216221"] = self.OnSubStart7216221,
        ["7216228"] = self.OnSubStart7216228,
        ["7216214"] = self.OnSubStart7216214,
        ["7216215"] = self.OnSubStart7216215,
        ["7216222"] = self.OnSubStart7216222,
        ["7216229"] = self.OnSubStart7216229,
        ["7216223"] = self.OnSubStart7216223,
        ["7216224"] = self.OnSubStart7216224,
        ["7216225"] = self.OnSubStart7216225,
        ["7216230"] = self.OnSubStart7216230,
        ["7216231"] = self.OnSubStart7216231,
        ["7216226"] = self.OnSubStart7216226
    }
end

function Quest72162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216216"] = self.OnSubFinish7216216,
        ["7216201"] = self.OnSubFinish7216201,
        ["7216202"] = self.OnSubFinish7216202,
        ["7216203"] = self.OnSubFinish7216203,
        ["7216205"] = self.OnSubFinish7216205,
        ["7216204"] = self.OnSubFinish7216204,
        ["7216206"] = self.OnSubFinish7216206,
        ["7216217"] = self.OnSubFinish7216217,
        ["7216210"] = self.OnSubFinish7216210,
        ["7216207"] = self.OnSubFinish7216207,
        ["7216208"] = self.OnSubFinish7216208,
        ["7216209"] = self.OnSubFinish7216209,
        ["7216219"] = self.OnSubFinish7216219,
        ["7216211"] = self.OnSubFinish7216211,
        ["7216212"] = self.OnSubFinish7216212,
        ["7216227"] = self.OnSubFinish7216227,
        ["7216220"] = self.OnSubFinish7216220,
        ["7216213"] = self.OnSubFinish7216213,
        ["7216221"] = self.OnSubFinish7216221,
        ["7216228"] = self.OnSubFinish7216228,
        ["7216214"] = self.OnSubFinish7216214,
        ["7216215"] = self.OnSubFinish7216215,
        ["7216222"] = self.OnSubFinish7216222,
        ["7216229"] = self.OnSubFinish7216229,
        ["7216223"] = self.OnSubFinish7216223,
        ["7216224"] = self.OnSubFinish7216224,
        ["7216225"] = self.OnSubFinish7216225,
        ["7216230"] = self.OnSubFinish7216230,
        ["7216231"] = self.OnSubFinish7216231,
        ["7216226"] = self.OnSubFinish7216226
    }
end

function Quest72162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216216"] = self.OnSubFailed7216216,
        ["7216201"] = self.OnSubFailed7216201,
        ["7216202"] = self.OnSubFailed7216202,
        ["7216203"] = self.OnSubFailed7216203,
        ["7216205"] = self.OnSubFailed7216205,
        ["7216204"] = self.OnSubFailed7216204,
        ["7216206"] = self.OnSubFailed7216206,
        ["7216217"] = self.OnSubFailed7216217,
        ["7216210"] = self.OnSubFailed7216210,
        ["7216207"] = self.OnSubFailed7216207,
        ["7216208"] = self.OnSubFailed7216208,
        ["7216209"] = self.OnSubFailed7216209,
        ["7216219"] = self.OnSubFailed7216219,
        ["7216211"] = self.OnSubFailed7216211,
        ["7216212"] = self.OnSubFailed7216212,
        ["7216227"] = self.OnSubFailed7216227,
        ["7216220"] = self.OnSubFailed7216220,
        ["7216213"] = self.OnSubFailed7216213,
        ["7216221"] = self.OnSubFailed7216221,
        ["7216228"] = self.OnSubFailed7216228,
        ["7216214"] = self.OnSubFailed7216214,
        ["7216215"] = self.OnSubFailed7216215,
        ["7216222"] = self.OnSubFailed7216222,
        ["7216229"] = self.OnSubFailed7216229,
        ["7216223"] = self.OnSubFailed7216223,
        ["7216224"] = self.OnSubFailed7216224,
        ["7216225"] = self.OnSubFailed7216225,
        ["7216230"] = self.OnSubFailed7216230,
        ["7216231"] = self.OnSubFailed7216231,
        ["7216226"] = self.OnSubFailed7216226
    }
end

function Quest72162:Start()
    print("Start")
end

function Quest72162:OnDestroy()
    print("OnDestroy")
end

function Quest72162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72162:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72162:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72162:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72162:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72162:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ShowReadingDialog(100992)
    elseif arg1 == 2 then
    end
end

function Quest72162:Finish22()
    print("Finish22")
    self:FinishQuestID(false, 7216222)
end

function Quest72162:Finish31()
    print("Finish31")
    self:FinishQuestID(false, 7216231)
end

function Quest72162:Finish12()
    print("Finish12")
    self:FinishQuestID(false, 7216212)
end

function Quest72162:Finish25()
    print("Finish25")
    self:FinishQuestID(false, 7216225)
end

function Quest72162:Finish21()
    print("Finish21")
    self:FinishQuestID(false, 7216221)
end

function Quest72162:OnSubStart7216216(arg1)
    print("OnSubStart7216216")
    self:CreateQuestNpc(arg1, npcs.Npc3063Data.id, 1)
    actorMgr:CreateActorWithPos("Q7216216Trigger", "Actor/Gadget/Q7216216Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_TengYuan01").pos, sceneData:GetDummyPoint(3, "WQ72162_TengYuan01").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest72162:OnSubFinish7216216(arg1)
    print("OnSubFinish7216216")
    self:NarratorOnlyTask(datas.PaimonFirst, nil, "")
end

function Quest72162:OnSubFailed7216216(arg1)
    print("OnSubFailed7216216")
end

function Quest72162:OnSubStart7216201(arg1)
    print("OnSubStart7216201")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest72162:OnSubFinish7216201(arg1)
    print("OnSubFinish7216201")
end

function Quest72162:OnSubFailed7216201(arg1)
    print("OnSubFailed7216201")
end

function Quest72162:OnSubStart7216202(arg1)
    print("OnSubStart7216202")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72162:OnSubFinish7216202(arg1)
    print("OnSubFinish7216202")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFailed7216202(arg1)
    print("OnSubFailed7216202")
end

function Quest72162:OnSubStart7216203(arg1)
    print("OnSubStart7216203")
    actorMgr:CreateActorWithPos("Q7216203Trigger", "Actor/Gadget/Q7216203Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_TengYuan02").pos, sceneData:GetDummyPoint(3, "WQ72162_TengYuan02").rot, true, false, 3)
end

function Quest72162:OnSubFinish7216203(arg1)
    print("OnSubFinish7216203")
end

function Quest72162:OnSubFailed7216203(arg1)
    print("OnSubFailed7216203")
end

function Quest72162:OnSubStart7216205(arg1)
    print("OnSubStart7216205")
end

function Quest72162:OnSubFinish7216205(arg1)
    print("OnSubFinish7216205")
end

function Quest72162:OnSubFailed7216205(arg1)
    print("OnSubFailed7216205")
end

function Quest72162:OnSubStart7216204(arg1)
    print("OnSubStart7216204")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3063Data.id, 1)
    self:RequestInteraction(npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFinish7216204(arg1)
    print("OnSubFinish7216204")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFailed7216204(arg1)
    print("OnSubFailed7216204")
end

function Quest72162:OnSubStart7216206(arg1)
    print("OnSubStart7216206")
    actorMgr:CreateActorWithPos("Q7216206Trigger", "Actor/Gadget/Q7216206Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_DiXiaShi02").pos, sceneData:GetDummyPoint(3, "WQ72162_DiXiaShi02").rot, true, false, 3)
end

function Quest72162:OnSubFinish7216206(arg1)
    print("OnSubFinish7216206")
end

function Quest72162:OnSubFailed7216206(arg1)
    print("OnSubFailed7216206")
end

function Quest72162:OnSubStart7216217(arg1)
    print("OnSubStart7216217")
    self:RequestInteraction(npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFinish7216217(arg1)
    print("OnSubFinish7216217")
end

function Quest72162:OnSubFailed7216217(arg1)
    print("OnSubFailed7216217")
end

function Quest72162:OnSubStart7216210(arg1)
    print("OnSubStart7216210")
end

function Quest72162:OnSubFinish7216210(arg1)
    print("OnSubFinish7216210")
end

function Quest72162:OnSubFailed7216210(arg1)
    print("OnSubFailed7216210")
end

function Quest72162:OnSubStart7216207(arg1)
    print("OnSubStart7216207")
end

function Quest72162:OnSubFinish7216207(arg1)
    print("OnSubFinish7216207")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.TengyuanDixiashi01, nil, "")
    end, nil, "", false, true)
end

function Quest72162:OnSubFailed7216207(arg1)
    print("OnSubFailed7216207")
end

function Quest72162:OnSubStart7216208(arg1)
    print("OnSubStart7216208")
end

function Quest72162:OnSubFinish7216208(arg1)
    print("OnSubFinish7216208")
    self:NarratorOnlyTask(datas.TengyuanDixiashi02, nil, "")
end

function Quest72162:OnSubFailed7216208(arg1)
    print("OnSubFailed7216208")
end

function Quest72162:OnSubStart7216209(arg1)
    print("OnSubStart7216209")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3063Data.alias, 0)
    self:NpcRunToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "WQ72162_Tengyuankaibx").pos, function(arg1)
        actorMgr:GetActor("72162"):FinishQuestID(false, 7216209)
    end)
end

function Quest72162:OnSubFinish7216209(arg1)
    print("OnSubFinish7216209")
end

function Quest72162:OnSubFailed7216209(arg1)
    print("OnSubFailed7216209")
end

function Quest72162:OnSubStart7216219(arg1)
    print("OnSubStart7216219")
end

function Quest72162:OnSubFinish7216219(arg1)
    print("OnSubFinish7216219")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFailed7216219(arg1)
    print("OnSubFailed7216219")
end

function Quest72162:OnSubStart7216211(arg1)
    print("OnSubStart7216211")
    actorMgr:CreateActorWithPos("Q7216211Trigger", "Actor/Gadget/Q7216211Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_TengYuanZD01").pos, sceneData:GetDummyPoint(3, "WQ72162_TengYuanZD01").rot, true, false, 3)
    self:CallDelay(2, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3063Data.id, 1)
    end)
end

function Quest72162:OnSubFinish7216211(arg1)
    print("OnSubFinish7216211")
end

function Quest72162:OnSubFailed7216211(arg1)
    print("OnSubFailed7216211")
end

function Quest72162:OnSubStart7216212(arg1)
    print("OnSubStart7216212")
    self:NarratorOnlyTask(datas.Tengyuanchufa, nil, "")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3063Data.alias, 0)
    self:NpcWalkToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "WQ72162_TengYuanZD02").pos, function(arg1)
        actorMgr:GetActor("72162"):FinishQuestID(false, 7216212)
    end)
end

function Quest72162:OnSubFinish7216212(arg1)
    print("OnSubFinish7216212")
end

function Quest72162:OnSubFailed7216212(arg1)
    print("OnSubFailed7216212")
end

function Quest72162:OnSubStart7216227(arg1)
    print("OnSubStart7216227")
    actorMgr:CreateActorWithPos("Q7216227Trigger", "Actor/Gadget/Q7216227Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_duihua27").pos, sceneData:GetDummyPoint(3, "WQ72162_duihua27").rot, true, false, 3)
end

function Quest72162:OnSubFinish7216227(arg1)
    print("OnSubFinish7216227")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20382Data.alias)
end

function Quest72162:OnSubFailed7216227(arg1)
    print("OnSubFailed7216227")
end

function Quest72162:OnSubStart7216220(arg1)
    print("OnSubStart7216220")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest72162:OnSubFinish7216220(arg1)
    print("OnSubFinish7216220")
end

function Quest72162:OnSubFailed7216220(arg1)
    print("OnSubFailed7216220")
end

function Quest72162:OnSubStart7216213(arg1)
    print("OnSubStart7216213")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFinish7216213(arg1)
    print("OnSubFinish7216213")
end

function Quest72162:OnSubFailed7216213(arg1)
    print("OnSubFailed7216213")
end

function Quest72162:OnSubStart7216221(arg1)
    print("OnSubStart7216221")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3063Data.alias, 0)
    self:NpcRunToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "WQ72162_TengYuanZD03").pos, function(arg1)
        actorMgr:GetActor("72162"):FinishQuestID(false, 7216221)
    end)
end

function Quest72162:OnSubFinish7216221(arg1)
    print("OnSubFinish7216221")
end

function Quest72162:OnSubFailed7216221(arg1)
    print("OnSubFailed7216221")
end

function Quest72162:OnSubStart7216228(arg1)
    print("OnSubStart7216228")
    actorMgr:CreateActorWithPos("Q7216228Trigger", "Actor/Gadget/Q7216228Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_duihua28").pos, sceneData:GetDummyPoint(3, "WQ72162_duihua28").rot, true, false, 3)
end

function Quest72162:OnSubFinish7216228(arg1)
    print("OnSubFinish7216228")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20383Data.alias)
end

function Quest72162:OnSubFailed7216228(arg1)
    print("OnSubFailed7216228")
end

function Quest72162:OnSubStart7216214(arg1)
    print("OnSubStart7216214")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest72162:OnSubFinish7216214(arg1)
    print("OnSubFinish7216214")
end

function Quest72162:OnSubFailed7216214(arg1)
    print("OnSubFailed7216214")
end

function Quest72162:OnSubStart7216215(arg1)
    print("OnSubStart7216215")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFinish7216215(arg1)
    print("OnSubFinish7216215")
end

function Quest72162:OnSubFailed7216215(arg1)
    print("OnSubFailed7216215")
end

function Quest72162:OnSubStart7216222(arg1)
    print("OnSubStart7216222")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3063Data.alias, 0)
    self:NpcRunToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "WQ72162_TengYuanZD04").pos, function(arg1)
        actorMgr:GetActor("72162"):FinishQuestID(false, 7216222)
    end)
end

function Quest72162:OnSubFinish7216222(arg1)
    print("OnSubFinish7216222")
end

function Quest72162:OnSubFailed7216222(arg1)
    print("OnSubFailed7216222")
end

function Quest72162:OnSubStart7216229(arg1)
    print("OnSubStart7216229")
    actorMgr:CreateActorWithPos("Q7216229Trigger", "Actor/Gadget/Q7216229Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_duihua29").pos, sceneData:GetDummyPoint(3, "WQ72162_duihua29").rot, true, false, 3)
end

function Quest72162:OnSubFinish7216229(arg1)
    print("OnSubFinish7216229")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20381Data.alias)
end

function Quest72162:OnSubFailed7216229(arg1)
    print("OnSubFailed7216229")
end

function Quest72162:OnSubStart7216223(arg1)
    print("OnSubStart7216223")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest72162:OnSubFinish7216223(arg1)
    print("OnSubFinish7216223")
end

function Quest72162:OnSubFailed7216223(arg1)
    print("OnSubFailed7216223")
end

function Quest72162:OnSubStart7216224(arg1)
    print("OnSubStart7216224")
    self:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFinish7216224(arg1)
    print("OnSubFinish7216224")
end

function Quest72162:OnSubFailed7216224(arg1)
    print("OnSubFailed7216224")
end

function Quest72162:OnSubStart7216225(arg1)
    print("OnSubStart7216225")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3063Data.alias, 0)
    self:NpcRunToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "WQ72162_TengYuanZD05").pos, function(arg1)
        actorMgr:GetActor("72162"):FinishQuestID(false, 7216225)
    end)
end

function Quest72162:OnSubFinish7216225(arg1)
    print("OnSubFinish7216225")
end

function Quest72162:OnSubFailed7216225(arg1)
    print("OnSubFailed7216225")
end

function Quest72162:OnSubStart7216230(arg1)
    print("OnSubStart7216230")
    actorMgr:CreateActorWithPos("Q7216230Trigger", "Actor/Gadget/Q7216230Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72162_duihua30").pos, sceneData:GetDummyPoint(3, "WQ72162_duihua30").rot, true, false, 3)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc3063Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    end)
end

function Quest72162:OnSubFinish7216230(arg1)
    print("OnSubFinish7216230")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20380Data.alias)
end

function Quest72162:OnSubFailed7216230(arg1)
    print("OnSubFailed7216230")
end

function Quest72162:OnSubStart7216231(arg1)
    print("OnSubStart7216231")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3063Data.alias, 0)
    self:NpcRunToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "WQ72162_TengYuanLast").pos, function(arg1)
        actorMgr:GetActor("72162"):FinishQuestID(false, 7216231)
    end)
end

function Quest72162:OnSubFinish7216231(arg1)
    print("OnSubFinish7216231")
end

function Quest72162:OnSubFailed7216231(arg1)
    print("OnSubFailed7216231")
end

function Quest72162:OnSubStart7216226(arg1)
    print("OnSubStart7216226")
end

function Quest72162:OnSubFinish7216226(arg1)
    print("OnSubFinish7216226")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3063Data.alias)
end

function Quest72162:OnSubFailed7216226(arg1)
    print("OnSubFailed7216226")
end

return Quest72162
